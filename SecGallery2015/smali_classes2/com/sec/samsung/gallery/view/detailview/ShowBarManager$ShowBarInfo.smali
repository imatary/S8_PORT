.class Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;
.super Ljava/lang/Object;
.source "ShowBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/ShowBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowBarInfo"
.end annotation


# instance fields
.field public disableAutoHide:Z

.field public final showActionBar:I

.field public final showFastOptionView:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->disableAutoHide:Z

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->showActionBar:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->showFastOptionView:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;-><init>(II)V

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/detailview/ShowBarManager$ShowBarInfo;->disableAutoHide:Z

    return-void
.end method
