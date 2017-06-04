.class public abstract Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field mAppId:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mId:Ljava/lang/String;

.field mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;

.field mOptionalId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/Transaction;->mContext:Landroid/content/Context;

    return-void
.end method
