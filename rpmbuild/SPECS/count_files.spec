Name:           count_files
Version:        1.0
Release:        1%{?dist}
Summary:        A script to count files in /etc

License:        MIT
Source0:        count_files.sh

%description
This package provides a simple script to count files in the /etc directory, excluding directories and symbolic links.

%prep

%build

%install
install -d %{buildroot}/usr/local/bin
install -m 755 %{SOURCE0} %{buildroot}/usr/local/bin/count_files.sh

%files
/usr/local/bin/count_files.sh

%changelog
* Tue Dec 12 2024 Yurii <yura.kulik.2005@gmail.com> - 1.0-1
- Initial package
