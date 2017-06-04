.class public Lcom/sec/android/gallery3d/util/StaticValues$Action;
.super Ljava/lang/Object;
.source "StaticValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/util/StaticValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final ACTION_MULTIPLE_PICK:Ljava/lang/String;

.field public static final SLIDESHOW_FINISH_ACTION:Ljava/lang/String; = "com.samsung.android.gallery.action.slideshow.finish"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.samsung.intent.action.MULTIPLE_PICK"

    :goto_0
    sput-object v0, Lcom/sec/android/gallery3d/util/StaticValues$Action;->ACTION_MULTIPLE_PICK:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.action.MULTIPLE_PICK"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
