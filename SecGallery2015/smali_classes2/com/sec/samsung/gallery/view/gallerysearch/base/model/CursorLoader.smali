.class public interface abstract Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;
.super Ljava/lang/Object;
.source "CursorLoader.java"


# static fields
.field public static final FEATURE_USE_POI_FOR_VISUAL_SEARCH:Z

.field public static final FEATURE_USE_SCLOUD:Z

.field public static final FEATURE_USE_SERVER_BASED_SEARCH:Z

.field public static final INCLUDE_VALID_BURST_IMAGE_ONLY:Ljava/lang/String; = " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

.field public static final INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

.field public static final INCLUDE_VALID_MEDIA_ONLY:Ljava/lang/String; = " (media_type IS NOT null) "

.field public static final RAW_QUERY:Ljava/lang/String; = "rawquery"

.field public static final SEARCH_ITEM_PATH:Ljava/lang/String; = "/searchitem/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePoiForVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_POI_FOR_VISUAL_SEARCH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SCLOUD:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseServerBasedSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " ((file_status = 0 OR file_status = 4) AND is_hide != 1) "

    :goto_0
    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, " (is_cloud = 1 OR is_cloud = 3) "

    goto :goto_0
.end method


# virtual methods
.method public abstract createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
.end method

.method public abstract getCategory()Ljava/lang/String;
.end method

.method public abstract getCategoryCursor()Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
