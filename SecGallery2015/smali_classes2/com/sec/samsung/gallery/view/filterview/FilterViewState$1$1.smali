.class Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1$1;
.super Ljava/lang/Object;
.source "FilterViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1$1;->this$1:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1$1;->this$1:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    # invokes: Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->exitSelectionMode()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    return-void
.end method
