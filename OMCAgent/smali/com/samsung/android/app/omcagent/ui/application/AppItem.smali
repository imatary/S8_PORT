.class public Lcom/samsung/android/app/omcagent/ui/application/AppItem;
.super Ljava/lang/Object;
.source "AppItem.java"


# instance fields
.field private contentSize:J

.field private downloadPercent:I

.field private icon:Landroid/graphics/Bitmap;

.field private isChecked:Z

.field private isEnableCheckBox:Z

.field private isVisibleCancelBtn:Z

.field private isVisibleCheckBox:Z

.field private isVisibleInstallingProgress:Z

.field private isVisibleSizeVisibility:Z

.field private isVisibleStateVisibility:Z

.field private isVisibledownloadingProgress:Z

.field private mode:I

.field private packageName:Ljava/lang/String;

.field private packageSize:Ljava/lang/String;

.field private state:I

.field private stateText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->title:Ljava/lang/String;

    const-string v0, "essential_contents"

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->packageName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->mode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->title:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->contentSize:J

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->state:I

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getMode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->mode:I

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getIconDrawable()[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getIconDrawable()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIcon(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f02001b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->title:Ljava/lang/String;

    const-string v0, "resource"

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getContentSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->contentSize:J

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->state:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->mode:I

    const v0, 0x7f02001b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->setIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getContentSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->contentSize:J

    return-wide v0
.end method

.method public getDownloadPercent()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->downloadPercent:I

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->mode:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->packageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->state:I

    return v0
.end method

.method public getStateText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->stateText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked:Z

    return v0
.end method

.method public isEnableCheckBox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isEnableCheckBox:Z

    return v0
.end method

.method public isVisibleCancelBtn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleCancelBtn:Z

    return v0
.end method

.method public isVisibleCheckBox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleCheckBox:Z

    return v0
.end method

.method public isVisibleInstallingProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleInstallingProgress:Z

    return v0
.end method

.method public isVisibleSizeVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleSizeVisibility:Z

    return v0
.end method

.method public isVisibleStateVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleStateVisibility:Z

    return v0
.end method

.method public isVisibledownloadingProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibledownloadingProgress:Z

    return v0
.end method

.method public setContentSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->contentSize:J

    return-void
.end method

.method public setDownloadPercent(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->downloadPercent:I

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isChecked:Z

    return-void
.end method

.method public setIsEnableCheckBox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isEnableCheckBox:Z

    return-void
.end method

.method public setIsVisibleCancelBtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleCancelBtn:Z

    return-void
.end method

.method public setIsVisibleCheckBox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleCheckBox:Z

    return-void
.end method

.method public setIsVisibleInstallingProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleInstallingProgress:Z

    return-void
.end method

.method public setIsVisibleSizeVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleSizeVisibility:Z

    return-void
.end method

.method public setIsVisibleStateVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibleStateVisibility:Z

    return-void
.end method

.method public setIsVisibledownloadingProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->isVisibledownloadingProgress:Z

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->mode:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPackageSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->packageSize:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->state:I

    return-void
.end method

.method public setStateText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->stateText:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ui/application/AppItem;->title:Ljava/lang/String;

    return-void
.end method
