# After creating libmruby.a, convert it to a shared library for Unity. See `mrbgem.rake`.
MRuby::CrossBuild.new("windows") do |conf|
  conf.toolchain
  conf.gembox '../../../vitalrouter'
  conf.disable_presym
  cc.defines = %w(MRB_WORD_BOXING MRB_NO_STDIO MRB_NO_PRESYM)
  cc.flags << '-Os'
end
