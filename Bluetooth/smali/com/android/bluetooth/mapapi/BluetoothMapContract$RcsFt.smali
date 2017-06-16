.class public interface abstract Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsFt;
.super Ljava/lang/Object;
.source "BluetoothMapContract.java"

# interfaces
.implements Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsCommonColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapapi/BluetoothMapContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsFt"
.end annotation


# static fields
.field public static final BYTES_TRANSF:Ljava/lang/String; = "bytes_transf"

.field public static final CANCEL_REASON:Ljava/lang/String; = "cancel_reason"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final CHAT_SESSION_ID:Ljava/lang/String; = "chat_session_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final FILE_SIZE:Ljava/lang/String; = "file_size"

.field public static final FT_AUTO_RETREIVE_SIZE:I = 0xfa000

.field public static final FT_AUTO_SENT_SIZE:I = 0xfa000

.field public static final FT_LMM_FALLBACK:I = 0xc8

.field public static final MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final REJECT_REASON:Ljava/lang/String; = "reject_reason"

.field public static final THUMBNAIL_PATH:Ljava/lang/String; = "thumbnail_path"

.field public static final TYPE_STR:Ljava/lang/String; = "ft"

.field public static final URI_FILE:Landroid/net/Uri;

.field public static final URI_SCHEDULED_FT:Landroid/net/Uri;

.field public static final URI_THUMBNAIL:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://im/ft/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://im/ft_scheduled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsFt;->URI_SCHEDULED_FT:Landroid/net/Uri;

    const-string/jumbo v0, "content://im/ft_file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsFt;->URI_FILE:Landroid/net/Uri;

    const-string/jumbo v0, "content://im/ft_thumbnail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/mapapi/BluetoothMapContract$RcsFt;->URI_THUMBNAIL:Landroid/net/Uri;

    return-void
.end method
