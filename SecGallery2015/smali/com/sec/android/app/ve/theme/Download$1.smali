.class Lcom/sec/android/app/ve/theme/Download$1;
.super Landroid/content/BroadcastReceiver;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/theme/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/theme/Download;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/theme/Download;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/theme/Download$1;->this$0:Lcom/sec/android/app/ve/theme/Download;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "package:"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/ve/theme/Download$1;->this$0:Lcom/sec/android/app/ve/theme/Download;

    invoke-static {v3}, Lcom/sec/android/app/ve/theme/Download;->access$000(Lcom/sec/android/app/ve/theme/Download;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/ve/theme/Download$1;->this$0:Lcom/sec/android/app/ve/theme/Download;

    invoke-static {v3}, Lcom/sec/android/app/ve/theme/Download;->access$000(Lcom/sec/android/app/ve/theme/Download;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/ve/theme/Download$1;->this$0:Lcom/sec/android/app/ve/theme/Download;

    invoke-static {v3}, Lcom/sec/android/app/ve/theme/Download;->access$100(Lcom/sec/android/app/ve/theme/Download;)Lcom/sec/android/app/ve/theme/Download$Adapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/ve/theme/Download$1;->this$0:Lcom/sec/android/app/ve/theme/Download;

    invoke-static {v3}, Lcom/sec/android/app/ve/theme/Download;->access$100(Lcom/sec/android/app/ve/theme/Download;)Lcom/sec/android/app/ve/theme/Download$Adapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/ve/theme/Download$1;->this$0:Lcom/sec/android/app/ve/theme/Download;

    invoke-static {v4}, Lcom/sec/android/app/ve/theme/Download;->access$100(Lcom/sec/android/app/ve/theme/Download;)Lcom/sec/android/app/ve/theme/Download$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/theme/Download$Adapter;->getThemePosition()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/ve/theme/Download$Adapter;->onThemeInstalled(IZ)V

    goto :goto_0
.end method
