.class Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter$1;
.super Ljava/lang/Object;
.source "RegisterReplyMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;

.field final synthetic val$item:Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;


# direct methods
.method constructor <init>(Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;

    iput-object p2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter$1;->val$item:Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get1(Lcom/android/phone/additionalservice/RegisterReplyMsg;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get1(Lcom/android/phone/additionalservice/RegisterReplyMsg;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter$1;->val$item:Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-set0(Lcom/android/phone/additionalservice/RegisterReplyMsg;I)I

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    sget-object v2, Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;->DIALOG_OPEN:Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    invoke-static {v1, v2}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-set1(Lcom/android/phone/additionalservice/RegisterReplyMsg;Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;)Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter$1;->this$1:Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    sget-object v2, Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;->SERVICE_NAME:Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;

    invoke-static {v1, v2}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-wrap0(Lcom/android/phone/additionalservice/RegisterReplyMsg;Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
