.class Lcom/android/keyguard/sec/KeyguardPreviewContainer$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardPreviewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$1;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$1;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->resetPreviewView()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$1;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-static {v0, p1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$002(Lcom/android/keyguard/sec/KeyguardPreviewContainer;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$1;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$000(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$1;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$100(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V

    goto :goto_0
.end method
