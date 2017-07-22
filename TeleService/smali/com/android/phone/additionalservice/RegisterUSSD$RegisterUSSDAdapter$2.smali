.class Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;
.super Ljava/lang/Object;
.source "RegisterUSSD.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

.field final synthetic val$item:Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;


# direct methods
.method constructor <init>(Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iput-object p2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;->val$item:Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/16 v4, 0x64

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get2(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get2(Lcom/android/phone/additionalservice/RegisterUSSD;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;->val$item:Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;

    iget-object v2, v2, Lcom/android/phone/additionalservice/RegisterUSSD$USSDItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "RegisterUSSD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v3, v3, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v3}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get4(Lcom/android/phone/additionalservice/RegisterUSSD;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterUSSD;->-get4(Lcom/android/phone/additionalservice/RegisterUSSD;)Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/additionalservice/RegisterUSSD$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterUSSD$AppState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/additionalservice/RegisterUSSD;->-set0(Lcom/android/phone/additionalservice/RegisterUSSD;I)I

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-virtual {v1, v4}, Lcom/android/phone/additionalservice/RegisterUSSD;->removeDialog(I)V

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter$2;->this$1:Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterUSSD$RegisterUSSDAdapter;->this$0:Lcom/android/phone/additionalservice/RegisterUSSD;

    invoke-virtual {v1, v4}, Lcom/android/phone/additionalservice/RegisterUSSD;->showDialog(I)V

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method
