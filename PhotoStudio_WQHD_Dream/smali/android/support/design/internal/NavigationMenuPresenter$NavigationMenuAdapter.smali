.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuAdapter"
.end annotation


# static fields
.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .locals 4

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    invoke-virtual {v2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x106000d

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    :cond_0
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mTransparentIcon:Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private prepareMenuItems()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
    invoke-static {v14}, Landroid/support/design/internal/NavigationMenuPresenter;->access$400(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_0
    if-ge v5, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
    invoke-static {v14}, Landroid/support/design/internal/NavigationMenuPresenter;->access$400(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v14

    if-eqz v14, :cond_4

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I
    invoke-static {v15}, Landroid/support/design/internal/NavigationMenuPresenter;->access$500(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->separator(II)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->of(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v7, 0x0

    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_3

    invoke-interface {v9, v7}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/MenuItem;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_2

    if-nez v10, :cond_1

    invoke-interface {v11}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_1

    const/4 v10, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    check-cast v11, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-static {v11}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->of(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-eq v4, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_8

    const/4 v1, 0x1

    :goto_3
    if-eqz v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I
    invoke-static {v15}, Landroid/support/design/internal/NavigationMenuPresenter;->access$500(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v16, v0

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I
    invoke-static/range {v16 .. v16}, Landroid/support/design/internal/NavigationMenuPresenter;->access$500(Landroid/support/design/internal/NavigationMenuPresenter;)I

    move-result v16

    invoke-static/range {v15 .. v16}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->separator(II)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_7

    const v14, 0x106000d

    invoke-virtual {v6, v14}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->of(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    if-nez v1, :cond_6

    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_6

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    goto :goto_4

    :cond_a
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItem(I)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItem(I)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->isSeparator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItem(I)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-object p2

    :pswitch_0
    if-nez p2, :cond_0

    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Landroid/support/design/internal/NavigationMenuPresenter;->access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/design/R$layout;->design_navigation_item:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/support/design/internal/NavigationMenuItemView;

    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;
    invoke-static {v4}, Landroid/support/design/internal/NavigationMenuPresenter;->access$100(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;
    invoke-static {v4}, Landroid/support/design/internal/NavigationMenuPresenter;->access$200(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Landroid/support/design/internal/NavigationMenuPresenter;->access$300(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/support/design/internal/NavigationMenuItemView;->initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V

    goto :goto_0

    :pswitch_1
    if-nez p2, :cond_1

    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Landroid/support/design/internal/NavigationMenuPresenter;->access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/design/R$layout;->design_navigation_item_subheader:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_1
    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getMenuItem()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_2

    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    # getter for: Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Landroid/support/design/internal/NavigationMenuPresenter;->access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroid/support/design/R$layout;->design_navigation_item_separator:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_2
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p2, v6, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItem(I)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
