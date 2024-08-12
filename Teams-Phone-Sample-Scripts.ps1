Set-CsPhoneNumberAssignment -Identity "edirienzo@eastmanstrings.com" -PhoneNumber "+17743418653" -PhoneNumberType DirectRouting
Set-CsPhoneNumberAssignment -Identity "edirienzo@eastmanstrings.com" -EnterpriseVoiceEnabled $true
Grant-CsOnlineVoiceRoutingPolicy -Identity "edirienzo@eastmanstrings.com" -PolicyName "TELNYX-SE"
Grant-CsCallingLineIdentity -Identity "edirienzo@eastmanstrings.com" -PolicyName "SEShires Caller ID"