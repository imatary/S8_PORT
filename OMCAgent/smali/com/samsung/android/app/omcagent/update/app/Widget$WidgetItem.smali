.class public Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/app/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetItem"
.end annotation


# static fields
.field static final itemType:I = 0x1


# instance fields
.field cellX:I

.field cellY:I

.field className:Ljava/lang/String;

.field isNewPage:Z

.field isReplace:Z

.field packageName:Ljava/lang/String;

.field page:I

.field spanX:I

.field spanY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->isNewPage:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->isReplace:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->className:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->cellX:I

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->cellY:I

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->spanX:I

    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->spanY:I

    :cond_3
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->page:I

    :cond_4
    return-void
.end method


# virtual methods
.method public getCellX()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->cellX:I

    return v0
.end method

.method public getCellY()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->cellY:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->page:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->spanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->spanY:I

    return v0
.end method

.method public isNewPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->isNewPage:Z

    return v0
.end method

.method public isReplace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->isReplace:Z

    return v0
.end method

.method public setCellX(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->cellX:I

    return-void
.end method

.method public setCellY(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->cellY:I

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->className:Ljava/lang/String;

    return-void
.end method

.method public setIsNewPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->isNewPage:Z

    return-void
.end method

.method public setIsReplace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->isReplace:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->page:I

    return-void
.end method

.method public setSpanX(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->spanX:I

    return-void
.end method

.method public setSpanY(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->spanY:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", className : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", page : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cellY : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
