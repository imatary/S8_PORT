.class Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;
.super Ljava/lang/Object;
.source "SDualScreenUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityModeEntry"
.end annotation


# instance fields
.field public mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field public mMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;->mMode:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput p2, p0, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil$ActivityModeEntry;->mMode:I

    return-void
.end method
