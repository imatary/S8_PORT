.class public Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PenDrawable"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;->mName:Ljava/lang/String;

    return-void
.end method

.method protected getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$PenDrawable;->mName:Ljava/lang/String;

    return-object v0
.end method
