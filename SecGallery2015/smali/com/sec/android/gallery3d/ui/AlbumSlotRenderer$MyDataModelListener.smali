.class Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;
.super Ljava/lang/Object;
.source "AlbumSlotRenderer.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataModelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method public onSizeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcom/sec/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/sec/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    return-void
.end method
