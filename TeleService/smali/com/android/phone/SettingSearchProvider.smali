.class public Lcom/android/phone/SettingSearchProvider;
.super Landroid/content/ContentProvider;
.source "SettingSearchProvider.java"


# static fields
.field static final RESULTE:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/phone/SettingSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/phone/SettingSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.phone.settingsearch.provider"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "key_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "state"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "active"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/SettingSearchProvider;->RESULTE:[Ljava/lang/String;

    sput-object v3, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string/jumbo v0, "SettingSearchProvider"

    iput-object v0, p0, Lcom/android/phone/SettingSearchProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method private DataPaser(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    return-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SettingSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/phone/SettingSearchProvider;->RESULTE:[Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string/jumbo v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_3

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v6, v2, v9

    invoke-direct {p0, v6}, Lcom/android/phone/SettingSearchProvider;->getCheckValue(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v5, "1"

    :goto_1
    aget-object v6, v2, v9

    invoke-direct {p0, v6}, Lcom/android/phone/SettingSearchProvider;->isEnable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    aget-object v7, v2, v10

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "0"

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "SettingSearchProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is deactivated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    aget-object v7, v2, v10

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    const/16 v7, 0x100

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    :cond_3
    return-object v3
.end method

.method private getCheckValue(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "button_data_enabled_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    return v2

    :cond_0
    const-string/jumbo v4, "button_roaming_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    return v2

    :cond_1
    const-string/jumbo v4, "button_enable_4g_single_data_key"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "enable_4g_single_data"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    return v3
.end method

.method private isEnable(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "button_roaming_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "button_data_enabled_key"

    invoke-direct {p0, v1}, Lcom/android/phone/SettingSearchProvider;->getCheckValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v5

    :cond_0
    const-string/jumbo v1, "button_enable_4g_single_data_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ril.IsCSIM"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "SettingSearchProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lte mode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lte_mode_switch"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",4G State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/SettingSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lte_mode_switch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    return v5

    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/phone/SettingSearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/phone/SettingSearchProvider;->DataPaser(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
