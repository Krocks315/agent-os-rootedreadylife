# Replication Kit: Clone Agent OS for Any New Site

## How to Replicate This System for a New Project

### Step 1: Copy the GitHub Repo
1. Go to the original repo: `github.com/krocks315/agent-os-rootedreadylife`
2. Click "Use this template" → "Create a new repository"
3. Name it: `agent-os-[new-site-name]`
4. Keep it public
5. Click "Create repository from template"

### Step 2: Update Site-Specific Config
Edit `06-REPLICATION-KIT/site-config-template.json`:
```json
{
  "site_name": "[New Site Name]",
  "domain": "[newsite.com]",
  "niche": "[Primary niche]",
  "target_audience": {
    "primary": "[Description]",
    "pain_points": ["Pain 1", "Pain 2", "Pain 3"]
  },
  "content_pillars": ["Pillar 1", "Pillar 2", "Pillar 3", "Pillar 4", "Pillar 5"],
  "seo_targets": {
    "primary": "[Main keyword]",
    "secondary": ["Keyword 1", "Keyword 2", "Keyword 3"],
    "long_tail": ["Long tail 1", "Long tail 2"]
  },
  "social_platforms": ["Facebook", "Pinterest", "Instagram"],
  "backlink_targets": [
    {
      "site": "[Target Site]",
      "niche": "[Their niche]",
      "opportunity": "[Type]",
      "contact": "[Email]",
      "da": 0,
      "priority": 1
    }
  ],
  "schema_types": ["FAQ", "Article", "Course"],
  "tone": "[Description of voice]"
}
```

### Step 3: Duplicate the Notion Template
1. In Notion, go to "Agent OS - RootedReadyLife"
2. Click the three dots (⋯) → "Duplicate"
3. Name the duplicate: "Agent OS - [New Site Name]"
4. Update all entries to reflect the new site

### Step 4: Update Content Prompts
In `02-CONTENT-ENGINE/prompts/`, update:
- `blog-posts.md` → New site audience, pillars, SEO targets
- `social-media.md` → New platforms, content types
- `email-sequences.md` → New lead magnet, course name
- `sales-pages.md` → New offer, pricing, bonuses

### Step 5: Update Backlink Targets
In `03-BACKLINK-BUILDER/target-sites.json`, replace with new niche targets.

### Step 6: Update Schema Markup
In `04-AI-CITATION-OPTIMIZER/schema-markup/`, update:
- `faq-schema.json` → New site FAQs
- `article-schema.json` → New site author info
- `howto-schema.json` → New site how-to guides

### Step 7: Create New Claude Commands
In `07-CLAUDE-COMMANDS/`, update triggers to reference the new site.

### Step 8: Test Everything
Run the new AGENTOS command for the new site. Verify all systems work.

---

## Estimated Time to Replicate
- GitHub repo: 5 minutes (using template)
- Notion setup: 15 minutes (using duplicate)
- Content prompts update: 30 minutes
- Backlink research: 1 hour
- **Total: ~2 hours to fully replicate for a new site**

---

## Sites Ready to Replicate

| Site | Priority | Niche | Estimated Value |
|------|----------|-------|-----------------|
| lyrashaai.com | #2 | AI assistant platform | High |
| novaversplatform.com | #3 | Creator marketplace | Medium |
| builds.lyrashaai.com | #4 | Portfolio/showcase | Low |
| abuelasfunnies.com | #5 | Community/entertainment | Medium |
| Tannie Talks (Instagram) | #6 | Personal brand | Medium |
| Echo's Story | #7 | Teen faith fiction | Medium |
| Janice/Ray/Olivia | #8 | AI personas | Low |
