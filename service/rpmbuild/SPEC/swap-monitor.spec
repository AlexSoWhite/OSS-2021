Name:           swap-monitor
Version:        1.0
Release:        1%{?dist}
Summary:        AlexSoWhite rpm swap service

License:        MIT
URL:            https://github.com/AlexSoWhite/OSS-2021/tree/main/service
Source0:        %{name}-%{version}.tar.gz

BuildRequires:	/bin/rm, /bin/mkdir, /bin/cp, /bin/sudo, selinux-policy, selinux-policy-devel
Requires:	/bin/bash

%description
Swap monitor service

%prep
%autosetup


%build
%configure
%make_build


%install
%make_install


%files
%license add-license-file-here
%doc add-docs-here



%changelog
* Sat May 21 20:20:03 MSK 2022 AlexSoWhite <shura_belov_00@bk.ru>
- 
