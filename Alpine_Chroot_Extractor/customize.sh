PKGDIR=/data/adb/modules/alpine_chroot_rootfs_package
FSDIR=/data/adb/modules/alpine_chroot_rootfs_package/rootfs
ui_print "Starting Extraction Progress..."
ui_print "Checking Target is available or not...."
if [[ ! -f ${PKGDIR}/alpine-minirootfs-3.14.0-aarch64.tar.gz ]]; then
    ui_print "Package not found,please flash rootfs package first."
    exit 1
else
    ui_print "Package available.Start extraction."
    mkdir -p ${FSDIR}
    tar zxvf ${PKGDIR}/alpine-minirootfs-3.14.0-aarch64.tar.gz -C ${FSDIR}
    if [ $? -ne 0 ]; then
        ui_print "Job failed!"
        exit 1
    else 
        ui_print "Job completed."
    fi
    ui_print "Writing resolv.conf"
    echo -e "nameserver 8.8.8.8\nameserver 8.8.4.4" > ${FSDIR}/etc/resolv.conf
    if [ $? -ne 0 ]; then
        ui_print "Job failed!"
        exit 1
    else 
        ui_print "Job completed."
    fi
    ui_print "Writing login script"
    mkdir -p ${PKGDIR}/system/bin && echo -e "#!/system/bin/sh\nsu -c chroot $FSDIR /bin/sh -l" > ${PKGDIR}/system/bin/alpine_launcher && chmod +x ${PKGDIR}/system/bin/alpine_launcher
    if [ $? -ne 0 ]; then
        ui_print "Job failed!"
        exit 1
    else 
        ui_print "Job completed."
    fi
    mv ${PKGDIR}/post-fs-data.sh.disabled ${PKGDIR}/post-fs-data.sh 
    ui_print "All done!Please remove this module after flash completed."
fi
