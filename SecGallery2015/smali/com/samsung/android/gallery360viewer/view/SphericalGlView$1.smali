.class Lcom/samsung/android/gallery360viewer/view/SphericalGlView$1;
.super Ljava/lang/Object;
.source "SphericalGlView.java"

# interfaces
.implements Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gallery360viewer/view/SphericalGlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;


# direct methods
.method constructor <init>(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$1;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderRequested()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$1;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->requestRender()V

    return-void
.end method
