.class Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/game/gamecast/common/utility/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public isAlphaAnimation:Z

.field public isRoundImage:Z

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iput-boolean p3, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->isRoundImage:Z

    iput-boolean p4, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->isAlphaAnimation:Z

    iput p5, p0, Lcom/sec/game/gamecast/common/utility/ImageLoader$PhotoToLoad;->type:I

    return-void
.end method
