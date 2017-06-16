.class public final Lcom/android/bluetooth/util/DevicePolicyUtils;
.super Ljava/lang/Object;
.source "DevicePolicyUtils.java"


# static fields
.field private static final BLUETOOTH_SHARING:Ljava/lang/String; = "bluetoothSharing"

.field private static ccp:Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/util/DevicePolicyUtils;->ccp:Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lcom/android/bluetooth/util/DevicePolicyUtils;->isBluetoothWorkContactSharingDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUriInternal()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getEnterprisePhoneUriInternal()Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "bluetoothSharing"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static isBluetoothWorkContactSharingDisabled(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v7, "device_policy"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v7, "user"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v7

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, p0, v8}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v1

    if-nez v1, :cond_1

    return v9

    :cond_1
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v7

    sput-object v7, Lcom/android/bluetooth/util/DevicePolicyUtils;->ccp:Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    sget-object v7, Lcom/android/bluetooth/util/DevicePolicyUtils;->ccp:Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/bluetooth/util/DevicePolicyUtils;->ccp:Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->isContactsSharingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    return v9

    :cond_2
    new-instance v7, Landroid/os/UserHandle;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_0

    return v9

    :cond_3
    const/4 v7, 0x1

    return v7
.end method
