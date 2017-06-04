.class Lcom/sec/samsung/gallery/core/ProxyMap;
.super Ljava/util/HashMap;
.source "ProxyMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class",
        "<+",
        "Lorg/puremvc/java/multicore/interfaces/IProxy;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "SELECTION_MANAGER"

    const-class v1, Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/core/ProxyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
