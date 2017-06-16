.class public Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;
.super Ljava/lang/Object;
.source "SpenContextMenuItemInfo.java"


# instance fields
.field public drawableBackgroundNormal:Landroid/graphics/drawable/Drawable;

.field public drawableBackgroundPressed:Landroid/graphics/drawable/Drawable;

.field public drawableDisableItem:Landroid/graphics/drawable/Drawable;

.field public drawableNormalItem:Landroid/graphics/drawable/Drawable;

.field public enable:Z

.field public id:I

.field public isCropItem:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableNormalItem:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableDisableItem:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundPressed:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->isCropItem:Z

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableNormalItem:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableDisableItem:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundPressed:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->isCropItem:Z

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableNormalItem:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableDisableItem:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundPressed:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableNormalItem:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableDisableItem:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundPressed:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->isCropItem:Z

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableNormalItem:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundPressed:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableNormalItem:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableDisableItem:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundPressed:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->isCropItem:Z

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableNormalItem:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableNormalItem:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableDisableItem:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundPressed:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->isCropItem:Z

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    return-void
.end method
