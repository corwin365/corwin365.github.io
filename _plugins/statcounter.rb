
# Add Statcounter to every generated HTML page.

STATCOUNTER_SNIPPET = <<~HTML
<!-- Statcounter -->
<script type="text/javascript">
var sc_project=13360500;
var sc_invisible=1;
var sc_security="9ddd836d";
</script>
<script type="text/javascript"
src="https://www.statcounter.com/counter/counter.js"
async></script>
<noscript>
<div class="statcounter">
<a title="Web Analytics"
href="https://statcounter.com/"
target="_blank">
<img class="statcounter"
src="https://c.statcounter.com/13360500/0/9ddd836d/1/"
alt="Web Analytics"
referrerpolicy="no-referrer-when-downgrade">
</a>
</div>
</noscript>
<!-- End Statcounter -->
HTML

Jekyll::Hooks.register :site, :post_render do |site, _payload|
  documents = site.pages + site.collections.values.flat_map(&:docs)
  
  documents.each do |document|
    html = document.output
    next unless html.is_a?(String) && html.match?(%r{</body>}i)
    next if html.include?("sc_project=13360500")
    
    document.output = html.sub(%r{</body>}i) do |closing_tag|
      "#{STATCOUNTER_SNIPPET}\n#{closing_tag}"
    end
  end
end
