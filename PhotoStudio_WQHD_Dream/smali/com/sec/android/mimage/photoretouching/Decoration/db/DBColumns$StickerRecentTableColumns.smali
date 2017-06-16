.class public final Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;
.super Ljava/lang/Object;
.source "DBColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StickerRecentTableColumns"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/item"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ITEM_IS_GIF:Ljava/lang/String; = "is_gif"

.field public static final ITEM_NO_OF_TIMES_USED:Ljava/lang/String; = "item_no_of_times_used"

.field public static final ITEM_PACKAGE_NAME:Ljava/lang/String; = "item_package_name"

.field public static final ITEM_RES_NAME:Ljava/lang/String; = "item_res_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.mimage.photoretouching.decoration/pe_recent_sticker"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerRecentTableColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
