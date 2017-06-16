.class public final Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;
.super Ljava/lang/Object;
.source "DBColumns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StickerCategoriesTableColumns"
.end annotation


# static fields
.field public static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/category"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final INITIAL_ORDER:Ljava/lang/String; = "initial_order"

.field public static final IS_DOWNLOAD:Ljava/lang/String; = "is_download"

.field public static final IS_VISIBLE:Ljava/lang/String; = "is_visible"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PACKAGE_THUMB_RES:Ljava/lang/String; = "package_thumb_res"

.field public static final PACKAGE_TITLE:Ljava/lang/String; = "package_title"

.field public static final RE_ARRANGED_ORDER:Ljava/lang/String; = "re_arranged_order"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.mimage.photoretouching.decoration/pe_sticker_categories"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/db/DBColumns$StickerCategoriesTableColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
