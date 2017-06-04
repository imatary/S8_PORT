.class Lcom/sec/android/app/ve/preview/ProjectPreview2$2;
.super Ljava/lang/Object;
.source "ProjectPreview2.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/preview/ProjectPreview2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$2;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string/jumbo v0, "PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "This is inside onAudioFocusChange of PreviewView Group -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$2;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    iget-object v0, v0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2$2;->this$0:Lcom/sec/android/app/ve/preview/ProjectPreview2;

    iget-object v0, v0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onAudioFocusLost()V

    :cond_0
    return-void
.end method
