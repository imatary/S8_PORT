.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;
.super Ljava/lang/Object;
.source "IconData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Icon"
.end annotation


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field resId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData$Icon;->resId:I

    return-void
.end method
