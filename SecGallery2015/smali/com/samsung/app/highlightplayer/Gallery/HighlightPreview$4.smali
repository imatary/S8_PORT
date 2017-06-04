.class Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$4;
.super Ljava/lang/Object;
.source "HighlightPreview.java"

# interfaces
.implements Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$ActivityLifeCycleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;


# direct methods
.method constructor <init>(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$4;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated()V
    .locals 2

    invoke-static {}, Lcom/samsung/app/highlightplayer/VEAppSpecific;->nativeInit()V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$4;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->isCreated:Z
    invoke-static {v0, v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$602(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;Z)Z

    return-void
.end method

.method public onActivityDestroyed()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->sVESDKWrapper:Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->exitSDK()V

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview$4;->this$0:Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->isCreated:Z
    invoke-static {v0, v1}, Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;->access$602(Lcom/samsung/app/highlightplayer/Gallery/HighlightPreview;Z)Z

    return-void
.end method

.method public onActivityPaused()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VideoEditor;->deinit()Z

    return-void
.end method

.method public onActivityResumed()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VideoEditor;->init()Z

    return-void
.end method
