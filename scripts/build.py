import os
import re

repo_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))

def read_file(path):
    with open(path, "r", encoding="utf-8") as f:
        return f.read()

def write_file(path, content):
    with open(path, "w", encoding="utf-8") as f:
        f.write(content)

# Context dictionary matching _config.yml
context = {
    "site.username": "C U Vivek",
    "site.user_title": "Senior Performance Engineer",
    "site.user_company": "American Express",
    "site.user_location": "Bengaluru, India",
    "site.title": "C U Vivek | Senior Performance Engineer",
    "site.description": "Senior Performance Engineer with over 10 years of experience in Banking, Telecom, and Petroleum domains. Specializing in high-throughput distributed systems (6,000 TPS), Chaos Engineering, and AI Performance Agents using LangGraph.",
    "site.url": "https://cuvivek.github.io",
    "site.email": "vivekcu81@gmail.com",
    "site.linkedin_url": "https://www.linkedin.com/in/vivekcu",
    "site.github_username": "cuvivek",
    "site.baseurl": "",
    "page.url": "/",
    "page.title": "",
    "page.description": "",
}

def render_template(template_str):
    # Process includes recursively
    def include_replacer(m):
        inc_name = m.group(1).strip()
        inc_path = os.path.join(repo_dir, "_includes", inc_name)
        if os.path.exists(inc_path):
            return render_template(read_file(inc_path))
        return f"<!-- Missing include {inc_name} -->"

    output = re.sub(r'\{%\s*include\s+([\w\.\-]+)\s*%\}', include_replacer, template_str)

    # Filters like prepend: site.baseurl
    output = re.sub(r'\{\{\s*"([^"]+)"\s*\|\s*prepend:\s*site\.baseurl\s*\}\}', r'\1', output)
    output = re.sub(r'\{\{\s*\'now\'\s*\|\s*date:\s*"%Y"\s*\}\}', '2026', output)

    # Conditionals:
    # {% if page.title %}...{% else %}...{% endif %}
    def if_else_replacer(m):
        cond = m.group(1).strip()
        true_body = m.group(2)
        false_body = m.group(3) if m.group(3) is not None else ""
        val = context.get(cond, "")
        if val:
            return true_body
        return false_body

    output = re.sub(
        r'\{%\s*if\s+([^%]+)\s*%\}(.*?)(?:\{%\s*else\s*%\}(.*?))?\{%\s*endif\s*%\}',
        if_else_replacer,
        output,
        flags=re.DOTALL
    )

    # Variable substitutions
    for k, v in context.items():
        output = output.replace("{{ " + k + " }}", v)
        output = output.replace("{{" + k + "}}", v)
        # short name like {{site.username}}
        short_k = k.replace(" ", "")
        output = output.replace("{{" + short_k + "}}", v)
        output = output.replace("{{ " + short_k + " }}", v)

    # Clean empty content marker
    output = output.replace("{{ content }}", "")

    return output

# Load base layout
default_layout = read_file(os.path.join(repo_dir, "_layouts", "default.html"))
final_html = render_template(default_layout)

# Ensure no leftover unrendered tags
leftovers = re.findall(r'(\{\%.*?\%\}|\{\{.*?\}\})', final_html)
if leftovers:
    print(f"Warning: Found {len(leftovers)} unrendered tags:")
    for tag in leftovers:
        print("  -", tag)
else:
    print("Success: Zero unrendered Liquid tags! Clean output.")

# Write to root index.html and _site/index.html
write_file(os.path.join(repo_dir, "index.html"), final_html)
os.makedirs(os.path.join(repo_dir, "_site"), exist_ok=True)
write_file(os.path.join(repo_dir, "_site", "index.html"), final_html)

# Also ensure .nojekyll exists so GitHub Pages serves this exact static index.html
write_file(os.path.join(repo_dir, ".nojekyll"), "")
write_file(os.path.join(repo_dir, "_site", ".nojekyll"), "")

print(f"Generated clean index.html ({len(final_html)} bytes) at root and _site/.")
