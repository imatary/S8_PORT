.class public Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;
.super Ljava/lang/Object;
.source "MobileNetworksSearchIndexablesProvider.java"


# static fields
.field private static final sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;
    .locals 1

    sget-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;

    return-object v0
.end method

.method private makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0xe

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0342

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const-string/jumbo v1, "android.intent.action.MAIN"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.phone"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0xc

    aput-object p2, v0, v1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method private makeRow(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method


# virtual methods
.method public queryNonIndexableKeys(Landroid/content/Context;Landroid/database/MatrixCursor;Landroid/provider/SearchIndexableResource;)V
    .locals 6

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v4

    iget v5, p3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v4, p1, v5}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getRemovePreferences(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRow(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public queryNonIndexableKeys(Landroid/content/Context;Landroid/database/MatrixCursor;[Landroid/provider/SearchIndexableResource;)V
    .locals 3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->queryNonIndexableKeys(Landroid/content/Context;Landroid/database/MatrixCursor;Landroid/provider/SearchIndexableResource;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public queryRawData(Landroid/content/Context;Landroid/database/MatrixCursor;)V
    .locals 4

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksPreferNetworkMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "button_prefer_networkmodespinner1_key"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "button_prefer_networkmodespinner2_key"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksVolteCall()Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "volte_settings_in_mobile_networks_chn"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d08d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "volte_call_key"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    const-string/jumbo v2, "volte_settings_in_mobile_networks_dcm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d08f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "volte_call_key"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2
    const-string/jumbo v2, "rename_volte_menu_oro"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d08d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "volte_call_key"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_3
    const-string/jumbo v2, "rename_volte_menu_ops"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d08e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "volte_call_key"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_4
    const-string/jumbo v2, "rename_volte_menu_dt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d088f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "volte_call_key"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_5
    const-string/jumbo v2, "volte_settings_in_mobile_networks_usc"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d08d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "volte_call_key"

    invoke-direct {p0, p1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_6
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksWifiCalling()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->getWiFiCallingTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "wifi_calling_key"

    invoke-direct {p0, p1, v2, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->makeRawData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
