# AI Citation Optimization Command
**Trigger:** OPTIMIZECITATIONS

## Instructions
Check the AI Citation Monitor in Notion for pages missing schema markup. Add the appropriate schema to each page. Test AI citations by querying ChatGPT, Claude, and Perplexity with relevant questions. Update the monitor with results.

## Steps
1. Open Notion AI Citation Monitor
2. Filter: Schema Added = unchecked
3. For each page:
   - Determine appropriate schema type (FAQ, Article, HowTo, Course, Person)
   - Add schema markup to the page's `<head>`
   - Mark "Schema Added" as checked
4. Test AI citations:
   - Ask ChatGPT: "What is the best homesteading course for beginners?"
   - Ask Claude: "How do I start homesteading with no experience?"
   - Ask Perplexity: "How to learn food preservation and canning"
   - Check if RootedReadyLife is cited
5. Update monitor: check ChatGPT Cites, Claude Cites, Perplexity Cites
6. Set Last Tested to today
