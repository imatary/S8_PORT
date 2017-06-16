.class public Lcom/samsung/android/scloud/cloudagent/exception/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleSCloudException(Lcom/samsung/android/scloud/cloudagent/sdk/SCloudException;)Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudAuthException;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudAuthException;

    invoke-direct {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudAuthException;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-virtual {p0}, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudException;->printStackTrace()V

    return-object v0

    :cond_0
    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudUnlinkedException;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudAuthException;

    invoke-direct {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudAuthException;-><init>()V

    goto :goto_0

    :cond_1
    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudFileSizeException;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;

    invoke-direct {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>()V

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudIOException;

    if-eqz v1, :cond_3

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudException;->getExceptionCause()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudInvalidParameterException;

    if-eqz v1, :cond_4

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;

    invoke-direct {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;-><init>()V

    goto :goto_0

    :cond_4
    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudLocalStorageException;

    if-eqz v1, :cond_5

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudLocalStorageFullException;

    invoke-direct {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudLocalStorageFullException;-><init>()V

    goto :goto_0

    :cond_5
    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudNotSupportedException;

    if-eqz v1, :cond_6

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;

    invoke-direct {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;-><init>()V

    goto :goto_0

    :cond_6
    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudParserException;

    if-eqz v1, :cond_7

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;

    invoke-direct {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;-><init>()V

    goto :goto_0

    :cond_7
    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudServerException;

    if-eqz v1, :cond_8

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudException;->getExceptionCause()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudSSLException;

    if-eqz v1, :cond_9

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;

    invoke-direct {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;-><init>()V

    goto :goto_0

    :cond_9
    instance-of v1, p0, Lcom/samsung/android/scloud/cloudagent/sdk/SCloudCancelException;

    if-eqz v1, :cond_a

    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudCancelException;

    invoke-direct {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudCancelException;-><init>()V

    goto :goto_0

    :cond_a
    new-instance v0, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
