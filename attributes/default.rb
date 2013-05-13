include_attribute "jetty"

expand!

default[:solr][:version]   = "4.3.0"
default[:solr][:link]      = "http://archive.apache.org/dist/lucene/solr/#{solr.version}/solr-#{solr.version}.tgz"
default[:solr][:checksum]  = "b28240167ce6dd6a957c548ea6085486a4d27a02a643c4812a6d4528778ea9b7" #sha265
default[:solr][:directory] = "/usr/local/src"
default[:solr][:download]  = "#{solr.directory}/solr-#{solr.version}.tgz"
default[:solr][:extracted] = "#{solr.directory}/solr-#{solr.version}"
default[:solr][:war]       = "#{solr.extracted}/dist/solr-#{solr.version}.war"

default[:solr][:context_path]  = 'solr'
default[:solr][:home]          = "#{node.jetty.home}/webapps/#{node.solr.context_path}"
set[:solr][:config]            = "#{node.solr.home}/conf"
set[:solr][:lib]               = "#{node.solr.home}/lib"
default[:solr][:data]          = "#{node.solr.home}/data"
default[:solr][:custom_config] = nil
default[:solr][:custom_lib]    = nil
