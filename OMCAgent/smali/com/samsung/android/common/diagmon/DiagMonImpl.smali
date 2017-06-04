.class public Lcom/samsung/android/common/diagmon/DiagMonImpl;
.super Ljava/lang/Object;
.source "DiagMonImpl.java"


# instance fields
.field private context:Landroid/content/Context;

.field private exList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMO:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->exList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/DiagMonImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    new-instance v0, Lcom/samsung/android/common/diagmon/bundle/BundleMerger;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.sec.android.log."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "get"

    const-string v4, "defaultMO"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger;->merge(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/samsung/android/common/diagmon/bundle/BundleMerger;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/samsung/android/common/diagmon/DiagMonImpl;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.sec.android.log."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "get"

    const-string v4, "defaultMO"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;-><init>(Landroid/os/Bundle;)V

    const-string v1, "./DiagMon/CFailLogUpload/ServiceID"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/common/diagmon/DiagMonImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;-><init>(Landroid/os/Bundle;)V

    const-string v1, "./DiagMon/CFailLogUpload/Ext/ResultCode"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/common/diagmon/DiagMonImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->add(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/common/diagmon/DiagMonImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;-><init>(Landroid/os/Bundle;)V

    if-eqz p3, :cond_0

    const-string v1, "./DiagMon/CFailLogUpload/Ext/UiMode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "./DiagMon/CFailLogUpload/Ext/EventID"

    invoke-virtual {v0, v1, p5}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    return-void
.end method

.method private logExceptions()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->setContext(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/common/util/DeviceUtils;

    invoke-direct {v1}, Lcom/samsung/android/common/util/DeviceUtils;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/util/DeviceUtils;->readAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->H(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->exList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/samsung/android/common/diagmon/FatalExceptionFileLog;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Throwable;)V
    .locals 5

    new-instance v0, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;-><init>(Landroid/os/Bundle;)V

    const-string v1, "./DiagMon/CFailLogUpload/Ext/ResultCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/common/diagmon/PackageInformation;->instance:Lcom/samsung/android/common/diagmon/PackageInformation;

    iget-object v4, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/diagmon/PackageInformation;->simpleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/common/diagmon/bundle/BundleAdder;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->exList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/samsung/android/common/diagmon/bundle/BundleHelper;->instance:Lcom/samsung/android/common/diagmon/bundle/BundleHelper;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "DiagMon"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CFailLogUpload"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Ext"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "EventID"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/common/diagmon/bundle/BundleHelper;->getString(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/samsung/android/common/diagmon/bundle/BundleHelper;->instance:Lcom/samsung/android/common/diagmon/bundle/BundleHelper;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "DiagMon"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CFailLogUpload"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Ext"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "ResultCode"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/common/diagmon/bundle/BundleHelper;->getString(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/samsung/android/common/diagmon/bundle/BundleHelper;->instance:Lcom/samsung/android/common/diagmon/bundle/BundleHelper;

    iget-object v1, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "DiagMon"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CFailLogUpload"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ServiceID"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/common/diagmon/bundle/BundleHelper;->getString(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUI()Z
    .locals 6

    sget-object v1, Lcom/samsung/android/common/diagmon/bundle/BundleHelper;->instance:Lcom/samsung/android/common/diagmon/bundle/BundleHelper;

    iget-object v2, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "DiagMon"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "CFailLogUpload"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "Ext"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "UiMode"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/common/diagmon/bundle/BundleHelper;->getString(Landroid/os/Bundle;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getUploadMO()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/diagmon/DiagMonImpl;->uploadMO:Landroid/os/Bundle;

    return-object v0
.end method

.method public sendReport()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/common/diagmon/DiagMonV1;

    invoke-direct {v2, p0}, Lcom/samsung/android/common/diagmon/DiagMonV1;-><init>(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/common/diagmon/DiagMonV2;

    invoke-direct {v2, p0}, Lcom/samsung/android/common/diagmon/DiagMonV2;-><init>(Lcom/samsung/android/common/diagmon/DiagMonImpl;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/common/diagmon/DiagMonImpl;->logExceptions()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/common/diagmon/DiagMonInterface;

    invoke-interface {v0}, Lcom/samsung/android/common/diagmon/DiagMonInterface;->sendReport()V

    goto :goto_0

    :cond_0
    return-void
.end method
