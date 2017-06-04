.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$DeviceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;,
        Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;
    }
.end annotation


# static fields
.field public static final ACTION_DEVICE_DELETED_BROADCAST:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.device.DeviceDeleted"

.field public static final CONTENT_TYPE:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String;

.field public static final ICON_PATH:Ljava/lang/String; = "device_icon"

.field public static final PATH:Ljava/lang/String; = "device"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "device"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device;->CONTENT_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "device"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device;->ENTRY_CONTENT_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "device"

    invoke-static {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeviceDeletedBroadcastIntentFilterForDevice(J)Landroid/content/IntentFilter;
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.device.DeviceDeleted"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device;->getDeviceEntryUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :try_start_0
    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Trouble creating intentFilter"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getDeviceEntryUri(J)Landroid/net/Uri;
    .locals 2

    const-string/jumbo v0, "device"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryIdUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIcon(Landroid/content/Context;JLcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;[I)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string/jumbo v4, "device_icon"

    invoke-static {p1, p2, v4}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore;->buildEntryIdUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "size"

    invoke-virtual {p3}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconSize;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v4, "theme"

    invoke-virtual {p4}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Device$IconTheme;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    array-length v5, p5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    :cond_0
    aget v2, p5, v4

    const-string/jumbo v6, "state"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v3, "alias_name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v3, "model_name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "model_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
