package com.example.pedro.loginjson.json;

public class Json {

        private String izziError;
        private String izziErrorCode;
        public ObjetoResponse response;
        public String token;

        public String getIzziError() {
                return izziError;
        }

        public void setIzziError(String izziError) {
                this.izziError = izziError;
        }

        public String getIzziErrorCode() {
                return izziErrorCode;
        }

        public void setIzziErrorCode(String izziErrorCode) {
                this.izziErrorCode = izziErrorCode;
        }

        public ObjetoResponse getResponse() {
                return response;
        }

        public void setResponse(ObjetoResponse response) {
                this.response = response;
        }

        public String getToken() {
                return token;
        }

        public void setToken(String token) {
                this.token = token;
        }
}
