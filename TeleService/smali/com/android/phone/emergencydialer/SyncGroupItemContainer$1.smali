.class Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;
.super Ljava/lang/Object;
.source "SyncGroupItemContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/SyncGroupItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;


# direct methods
.method constructor <init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const-string/jumbo v1, "EmergencySyncGroupItemContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLongClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v1, v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mEmergencyContactList:Landroid/widget/GridView;

    invoke-virtual {v1, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;

    iget-wide v2, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$1;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1, p2, p3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-wrap0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Landroid/view/View;I)Z

    move-result v1

    return v1
.end method
