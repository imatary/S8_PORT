.class Lcom/android/phone/callsettings/SubNumberManager$5;
.super Ljava/lang/Object;
.source "SubNumberManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SubNumberManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SubNumberManager;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SubNumberManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager$5;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "action_mode_close_button"

    const-string/jumbo v5, "id"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/callsettings/SubNumberManager$5;->this$0:Lcom/android/phone/callsettings/SubNumberManager;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/SubNumberManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
