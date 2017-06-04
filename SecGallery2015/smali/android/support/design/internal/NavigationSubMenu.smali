.class public Landroid/support/design/internal/NavigationSubMenu;
.super Landroid/support/v7/internal/view/menu/SubMenuBuilder;
.source "NavigationSubMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/NavigationMenu;Landroid/support/v7/internal/view/menu/MenuItemImpl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)V

    return-void
.end method

.method private notifyParent()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/internal/NavigationSubMenu;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Landroid/support/design/internal/NavigationSubMenu;->notifyParent()V

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Landroid/support/design/internal/NavigationSubMenu;->notifyParent()V

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Landroid/support/design/internal/NavigationSubMenu;->notifyParent()V

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Landroid/support/design/internal/NavigationSubMenu;->notifyParent()V

    return-object v0
.end method
