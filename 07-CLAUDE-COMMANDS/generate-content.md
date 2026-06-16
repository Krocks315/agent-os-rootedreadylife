# Content Generation Command
**Trigger:** GENERATECONTENT

## Instructions
Check the Content Calendar in Notion for items with Status = "Draft" and Assigned To = "Claude". Generate the content following the prompts in the GitHub repo. Save to the appropriate output folder and update Notion status to "Review".

## Steps
1. Open Notion Content Calendar
2. Filter: Status = "Draft", Assigned To = "Claude"
3. For each item:
   - Read the appropriate prompt from GitHub repo
   - Generate the content
   - Save to correct output folder
   - Update Notion status to "Review"
4. Notify Ingrid that content is ready for review

## Content Types & Prompts
- Blog Post → Use `02-CONTENT-ENGINE/prompts/blog-posts.md`
- Social Media → Use `02-CONTENT-ENGINE/prompts/social-media.md`
- Email → Use `02-CONTENT-ENGINE/prompts/email-sequences.md`
- Sales Page → Use `02-CONTENT-ENGINE/prompts/sales-pages.md`
