.class public Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;
.super Ljava/lang/Object;
.source "IconGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IconGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooserGridItem"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mCommand:I

.field private mTitleResId:I

.field private packageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->mTitleResId:I

    return v0
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->mTitleResId:I

    iput-object p2, p0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->mCommand:I

    iput-object p4, p0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IconGridAdapter$ChooserGridItem;->packageName:Ljava/lang/String;

    return-object v0
.end method
