.class Lcom/sec/android/gallery3d/app/StateManager$StateEntry;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateEntry"
.end annotation


# instance fields
.field public final activityState:Lcom/sec/android/gallery3d/app/ActivityState;

.field public final data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->data:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/StateManager$StateEntry;->activityState:Lcom/sec/android/gallery3d/app/ActivityState;

    return-void
.end method
