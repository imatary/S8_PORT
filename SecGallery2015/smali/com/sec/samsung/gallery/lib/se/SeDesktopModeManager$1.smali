.class Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager$1;
.super Ljava/lang/Object;
.source "SeDesktopModeManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->access$000(Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->access$000(Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;->onDesktopDockConnectionChanged(Z)V

    :cond_0
    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->access$000(Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager$1;->this$0:Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;->access$000(Lcom/sec/samsung/gallery/lib/se/SeDesktopModeManager;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface$DesktopModeManagerListener;->onDesktopModeChanged(Z)V

    :cond_0
    return-void
.end method
