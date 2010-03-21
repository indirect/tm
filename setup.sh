# Just add tab-completion to `tm`
complete -W '$(ls ~/.tmproj | sed s/.tmproj//)' tm

# Also wrap `mate` with `tm` and add tab-completion
alias mate='tm'
complete -f -W '$(ls ~/.tmproj | sed s/.tmproj//)' mate
