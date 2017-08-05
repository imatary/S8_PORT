.class public Lcom/android/bluetooth/pbap/BluetoothPbapUtils;
.super Ljava/lang/Object;
.source "BluetoothPbapUtils.java"


# static fields
.field public static final AUTOREJECTED_TYPE:I = 0x6

.field public static final FILTER_ADDRESS:I = 0x5

.field public static final FILTER_EMAIL:I = 0x8

.field public static final FILTER_LABEL:I = 0x6

.field public static final FILTER_MAILER:I = 0x9

.field public static final FILTER_NICKNAME:I = 0x17

.field public static final FILTER_NOTE:I = 0x11

.field public static final FILTER_ORG:I = 0x10

.field public static final FILTER_PHOTO:I = 0x3

.field public static final FILTER_TEL:I = 0x7

.field public static final FILTER_URL:I = 0x14

.field public static final JANSKY_RECEIVED_TYPE:I = 0x10

.field public static final JANSKY_REJECTED_TYPE:I = 0x11

.field public static final NeedDelayResponseCarkitOui:Ljava/lang/String; = "0c:d9:c1"

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final REJECTED_TYPE:I = 0x5

.field public static final SEARCH_BY_EMAIL:I = 0x1

.field public static final SEARCH_BY_NUMBER:I = 0x0

.field public static SIM_IS_READY:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapUtils"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"

.field private static final V:Z

.field private static mBlackLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->SIM_IS_READY:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->mBlackLists:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBlackList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->mBlackLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;
    .locals 6

    const/4 v3, 0x1

    or-int/lit16 v2, p1, 0x7800

    invoke-static {p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isNameAndNumberOnly([B)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v4, "BluetoothPbapUtils"

    const-string/jumbo v5, "Creating Name/Number only VCardComposer..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x400000

    or-int/2addr v2, v4

    :cond_0
    :goto_0
    new-instance v4, Lcom/android/vcard/VCardComposer;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    return-object v4

    :cond_1
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->includePhotosInVcard()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x3

    invoke-static {p2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    const-string/jumbo v4, "BluetoothPbapUtils"

    const-string/jumbo v5, "Excluding images from VCardComposer..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x800000

    or-int/2addr v2, v4

    :cond_2
    invoke-static {p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    invoke-static {p2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x6

    invoke-static {p2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    :goto_2
    const/16 v4, 0x8

    invoke-static {p2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x9

    invoke-static {p2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_4
    :goto_3
    const/16 v4, 0x10

    invoke-static {p2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "BluetoothPbapUtils"

    const-string/jumbo v5, "Excluding organization from VCardComposer..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x20000

    or-int/2addr v2, v4

    :cond_5
    const/16 v4, 0x14

    invoke-static {p2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "BluetoothPbapUtils"

    const-string/jumbo v5, "Excluding URLS from VCardComposer..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x10000

    or-int/2addr v2, v4

    :cond_6
    const/16 v4, 0x11

    invoke-static {p2, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "BluetoothPbapUtils"

    const-string/jumbo v5, "Excluding notes from VCardComposer..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x8000

    or-int/2addr v2, v4

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    const-string/jumbo v4, "BluetoothPbapUtils"

    const-string/jumbo v5, "Excluding addresses from VCardComposer..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x40000

    or-int/2addr v2, v4

    goto :goto_2

    :cond_a
    const-string/jumbo v4, "BluetoothPbapUtils"

    const-string/jumbo v5, "Excluding email addresses from VCardComposer..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x80000

    or-int/2addr v2, v4

    goto :goto_3
.end method

.method public static final createProfileVCard(Landroid/content/Context;I[B)Ljava/lang/String;
    .locals 12

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/4 v0, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v7

    const/high16 v1, -0x40000000    # -2.0f

    if-ne p1, v1, :cond_3

    const/16 v1, 0x1a

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_1

    const/16 v1, 0x1b

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "VERSION:2.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VERSION:2.1\r\nN:;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";;;\r\nFN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "BluetoothPbapUtils"

    const-string/jumbo v2, "Vcard 2.1 name is empty. fill localName!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-object v9

    :cond_2
    :try_start_2
    const-string/jumbo v1, "BluetoothPbapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create profile vcard. Error initializing composer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v1, "BluetoothPbapUtils"

    const-string/jumbo v2, "Unable to create profile vcard."

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v8

    goto :goto_1

    :cond_3
    const/16 v1, 0x1c

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_1

    const/16 v1, 0x1d

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_1

    const/16 v1, 0x21

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_1

    const/16 v1, 0x22

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_1

    const-string/jumbo v1, "VERSION:3.0\r\nN:\r\nFN:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VERSION:3.0\r\nN:;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";;;\r\nFN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "BluetoothPbapUtils"

    const-string/jumbo v2, "Vcard 3.0 name is empty. fill localName!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static createProfileVCardFile(Ljava/io/File;Landroid/content/Context;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    const-string/jumbo v8, "r"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v6, 0x0

    return v6

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0xc8

    :try_start_1
    invoke-static {v1, v3, v6}, Lcom/android/bluetooth/Utils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    :goto_0
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->safeCloseStream(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->safeCloseStream(Ljava/io/OutputStream;)V

    return v4

    :catch_0
    move-exception v5

    :goto_1
    const-string/jumbo v6, "BluetoothPbapUtils"

    const-string/jumbo v7, "Unable to create default contact vcard file"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v2, v3

    goto :goto_1
.end method

.method public static getContactInfo(ILandroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v0, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v0, ""

    aput-object v0, v6, v2

    const-string/jumbo v0, ""

    aput-object v0, v6, v10

    const-string/jumbo v3, "in_visible_group=1"

    const-string/jumbo v5, "_id ASC"

    const/4 v8, 0x0

    if-nez p0, :cond_3

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v9, 0x0

    aput-object v4, v2, v9

    const-string/jumbo v4, "display_name"

    const/4 v9, 0x1

    aput-object v4, v2, v9

    const-string/jumbo v4, "type"

    const/4 v9, 0x2

    aput-object v4, v2, v9

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v10, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v6, v2

    if-nez p0, :cond_1

    const-string/jumbo v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v6, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v8, 0x0

    :cond_2
    return-object v6

    :cond_3
    if-ne p0, v10, :cond_0

    :try_start_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v9, 0x0

    aput-object v4, v2, v9

    const-string/jumbo v4, "display_name"

    const/4 v9, 0x1

    aput-object v4, v2, v9

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "BluetoothPbapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception while getting Display name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_4
    throw v0
.end method

.method public static final getContentTypeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "PHONEBOOK"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "INCOMING_CALL_HISTORY"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "MISSED_CALL_HISTORY"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "OUTGOING_CALL_HISTORY"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "COMBINED_CALL_HISTORY"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "SIM_PHONEBOOK"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static getProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    return-object v8

    :catch_0
    move-exception v7

    const-string/jumbo v0, "BluetoothPbapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Catching SecurityException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasFilter([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBlackList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->mBlackLists:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFilterBitSet([BI)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v4

    if-eqz v4, :cond_1

    div-int/lit8 v4, p1, 0x8

    rsub-int/lit8 v1, v4, 0x7

    rem-int/lit8 v0, p1, 0x8

    array-length v4, p0

    if-ge v1, v4, :cond_1

    aget-byte v4, p0, v1

    shl-int v5, v2, v0

    and-int/2addr v4, v5

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static isNameAndNumberOnly([B)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothPbapUtils"

    const-string/jumbo v2, "No filter set. isNameAndNumberOnly=false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    aget-byte v1, p0, v0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x7f

    if-lez v1, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x6

    aget-byte v1, p0, v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x78

    if-lez v1, :cond_5

    return v3

    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public static isProfileSet(Landroid/content/Context;)Z
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v8, 0x1

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    return v8

    :catch_0
    move-exception v7

    const-string/jumbo v0, "BluetoothPbapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Catching SecurityException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method
