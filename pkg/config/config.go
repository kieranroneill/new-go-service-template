package config

import (
  "github.com/kieranroneill/new-go-service-template/pkg/logger"
  "os"
)

type Config struct {
  Environment string
	Port string
	Version string
  ServiceName string
}

func New() *Config {
	return &Config{
		Environment: GetEnv("ENV", ""),
		Port: GetEnv("PORT", ""),
    ServiceName: GetEnv("SERVICE_NAME", ""),
    Version: GetEnv("VERSION", ""),
	}
}

func GetEnv(key string, defaultVal string) string {
	if value, exists := os.LookupEnv(key); exists {
	  logger.Info.Printf("here: %s", value)
		return value
	}

	return defaultVal
}
