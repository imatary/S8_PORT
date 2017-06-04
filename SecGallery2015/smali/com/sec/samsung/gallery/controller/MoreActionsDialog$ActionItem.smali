.class Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;
.super Ljava/lang/Object;
.source "MoreActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/MoreActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionItem"
.end annotation


# instance fields
.field private final mIcon:I

.field private final mId:I

.field final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;->mId:I

    iput p2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;->mIcon:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;->mIcon:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$ActionItem;->mName:Ljava/lang/String;

    return-object v0
.end method
