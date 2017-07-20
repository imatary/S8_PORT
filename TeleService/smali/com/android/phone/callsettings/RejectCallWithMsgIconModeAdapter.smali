.class public Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;
.super Landroid/widget/BaseAdapter;
.source "RejectCallWithMsgIconModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;,
        Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;

    instance-of v0, p1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mItems:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "RejectCallWithMsgIconModeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findItem(I)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    const-string/jumbo v3, "RejectCallWithMsgIconModeAdapter"

    const-string/jumbo v4, "ignore add icon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "position"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_2
    return-object v5
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "RejectCallWithMsgIconModeAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->findItem(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v12, 0x1

    :goto_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getView() position: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", isLand : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->log(Ljava/lang/String;)V

    if-nez p2, :cond_3

    new-instance v18, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f0400bc

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v19, 0x7f10022a

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->itemLayout:Landroid/view/ViewGroup;

    const v19, 0x7f10022c

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    const v19, 0x7f10022d

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    const v19, 0x7f10022e

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    const/4 v10, 0x0

    const/4 v7, 0x0

    const v19, 0x7f10022b

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    invoke-direct/range {p0 .. p1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->findItem(I)Ljava/util/HashMap;

    move-result-object v13

    if-eqz v13, :cond_6

    const-string/jumbo v19, "position"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v19, "iconId"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string/jumbo v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string/jumbo v19, "message"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "item index = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", title = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->log(Ljava/lang/String;)V

    sget-object v19, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->TILES_ICONS:[I

    aget v5, v19, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    const-string/jumbo v19, " "

    const-string/jumbo v20, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "\n"

    const-string/jumbo v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->itemLayout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getCurrState()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/Checkable;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->getCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;->onRefreshScreenDone()V

    :cond_1
    return-object p2

    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getCheckStatus()Landroid/util/SparseBooleanArray;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/Checkable;

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/Checkable;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mItems:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const-string/jumbo v19, "tablet_device"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mContext:Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;->getCurrState()I

    move-result v4

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->itemLayout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v19, "tablet_device"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->checkBoxView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    const/4 v9, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_8
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$ViewHolder;->itemLayout:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v19, "RejectCallWithMsgIconModeAdapter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "position "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " content does not exist!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRefreshScreenDoneListener(Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter;->mRefreshDoneListener:Lcom/android/phone/callsettings/RejectCallWithMsgIconModeAdapter$RefreshScreenDoneListener;

    return-void
.end method
