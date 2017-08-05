.class Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;
.super Ljava/lang/Object;
.source "BluetoothMapSettingsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

.field final synthetic val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;ILcom/android/bluetooth/map/BluetoothMapAccountItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$groupPosition:I

    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$groupPosition:I

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->getGroup(I)Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    move-result-object v5

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean v4, v7, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-boolean p2, v7, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz p2, :cond_6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v7, v5}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-wrap0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapAccountItem;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-get4(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;)I

    move-result v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v7, :cond_5

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    if-eq v2, v0, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean v7, v6, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-nez v7, :cond_4

    const/4 v3, 0x0

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    iput-boolean v11, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v7, v10}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-set0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z

    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->notifyDataSetChanged()V

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iget-boolean v7, v7, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eq v7, v4, :cond_3

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->updateAccount(Lcom/android/bluetooth/map/BluetoothMapAccountItem;)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    iget-object v8, v8, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->mActivity:Landroid/app/Activity;

    const v9, 0x7f0a0091

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-wrap1(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    iput-boolean v10, v7, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    goto :goto_1

    :cond_6
    iget-boolean v7, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    if-eqz v7, :cond_7

    iput-boolean v10, v5, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mIsChecked:Z

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v7, v10}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-set0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;

    invoke-static {v7, v11}, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;->-set0(Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter;Z)Z

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapSettingsDataHolder;->mCheckedChilds:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapSettingsAdapter$2;->val$child:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
