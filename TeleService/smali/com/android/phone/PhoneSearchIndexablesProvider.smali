.class public Lcom/android/phone/PhoneSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "PhoneSearchIndexablesProvider.java"


# static fields
.field private static INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    new-array v0, v5, [Landroid/provider/SearchIndexableResource;

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070046

    const v4, 0x7f030001

    invoke-direct {v1, v5, v3, v2, v4}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isOwnerMode()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isNoPhoneGlobalsHere()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isAirplainModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    sget-object v1, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    if-nez v1, :cond_4

    return-object v2

    :cond_4
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->queryNonIndexableKeys(Landroid/content/Context;Landroid/database/MatrixCursor;[Landroid/provider/SearchIndexableResource;)V

    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isOwnerMode()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isNoPhoneGlobalsHere()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isAirplainModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v2

    :cond_3
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchIndexablesProvider;->queryRawData(Landroid/content/Context;Landroid/database/MatrixCursor;)V

    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v6

    :cond_0
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isOwnerMode()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v6

    :cond_1
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isNoPhoneGlobalsHere()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v6

    :cond_2
    invoke-static {}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isAirplainModeOn()Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v6

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->updateIndexableRes(Landroid/content/Context;)[Landroid/provider/SearchIndexableResource;

    move-result-object v4

    sput-object v4, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    sget-object v4, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    if-nez v4, :cond_4

    return-object v6

    :cond_4
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    array-length v0, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    const/4 v4, 0x7

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v6, v3, v4

    sget-object v4, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.android.phone"

    const/4 v5, 0x5

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/phone/PhoneSearchIndexablesProvider;->INDEXABLE_RES:[Landroid/provider/SearchIndexableResource;

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method
