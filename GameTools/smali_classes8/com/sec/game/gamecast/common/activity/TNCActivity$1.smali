.class Lcom/sec/game/gamecast/common/activity/TNCActivity$1;
.super Ljava/lang/Object;
.source "TNCActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/game/gamecast/common/activity/TNCActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/game/gamecast/common/activity/TNCActivity;


# direct methods
.method constructor <init>(Lcom/sec/game/gamecast/common/activity/TNCActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/TNCActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/TNCActivity;

    # getter for: Lcom/sec/game/gamecast/common/activity/TNCActivity;->mLayoutCheckBoxAgree:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->access$000(Lcom/sec/game/gamecast/common/activity/TNCActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/TNCActivity;

    sget v3, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_BODY_I_HAVE_READ_AND_AGREE_TO_ALL_THE_TERMS_OF_SERVICE_ABOVE:I

    invoke-virtual {v2, v3}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/TNCActivity;

    sget v3, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_TBOPT_SELECTED:I

    invoke-virtual {v2, v3}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/TNCActivity;

    # getter for: Lcom/sec/game/gamecast/common/activity/TNCActivity;->mLayoutCheckBoxAgree:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->access$000(Lcom/sec/game/gamecast/common/activity/TNCActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/TNCActivity;

    sget v3, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_BODY_I_HAVE_READ_AND_AGREE_TO_ALL_THE_TERMS_OF_SERVICE_ABOVE:I

    invoke-virtual {v2, v3}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/game/gamecast/common/activity/TNCActivity$1;->this$0:Lcom/sec/game/gamecast/common/activity/TNCActivity;

    sget v3, Lcom/sec/game/gamecast/common/R$string;->MIDS_GH_TBOPT_NOT_SELECTED:I

    invoke-virtual {v2, v3}, Lcom/sec/game/gamecast/common/activity/TNCActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
