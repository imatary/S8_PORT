.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$20;
.super Ljava/lang/Object;
.source "AlbumViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$20;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emptySpaceClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$20;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setNeedToShowMenuOnEmptySpace(Z)V

    return-void
.end method
