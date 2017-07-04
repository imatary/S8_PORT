.class Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$2;
.super Ljava/lang/Object;
.source "MapViewDataAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->access$000(Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;)Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->notifyDirty()V

    return-void
.end method
