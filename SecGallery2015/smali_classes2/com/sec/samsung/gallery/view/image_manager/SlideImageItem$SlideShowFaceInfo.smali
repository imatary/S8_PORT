.class public Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;
.super Ljava/lang/Object;
.source "SlideImageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlideShowFaceInfo"
.end annotation


# instance fields
.field public mRatioX:F

.field public mRatioY:F

.field public mScaleValue:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->this$0:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mRatioX:F

    iput v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mRatioY:F

    iput v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    return-void
.end method
