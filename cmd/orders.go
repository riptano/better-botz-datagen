/*
Copyright © 2020 Adron Hall <adron@thrashingcode.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
package cmd

import (
	"fmt"
	"github.com/brianvoe/gofakeit/v4"
	"github.com/spf13/cobra"
)

// ordersCmd represents the orders command
var ordersCmd = &cobra.Command{
	Use:   "orders",
	Short: "A brief description of your command",
	Long: `A longer description that spans multiple lines and likely contains examples
and usage of using your command. For example:

Cobra is a CLI library for Go that empowers applications.
This application is a tool to generate the needed files
to quickly create a Cobra application.`,
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("orders called")

		//gofakeit.Seed(0)

		//gofakeit.Name() // Markus Moen
		//gofakeit.Email() // alaynawuckert@kozey.biz
		//gofakeit.Phone() // (570)245-7485
		//gofakeit.BS() // front-end
		//gofakeit.BeerName() // Duvel
		//gofakeit.Color() // MediumOrchid
		//gofakeit.Company() // Moen, Pagac and Wuckert
		//gofakeit.CreditCardNumber() // 4287271570245748
		//gofakeit.HackerPhrase() // Connecting the array won't do anything, we need to generate the haptic COM driver!
		//gofakeit.JobTitle() // Director
		//gofakeit.Password(true, true, true, true, true, 32) // WV10MzLxq2DX79w1omH97_0ga59j8!kj
		//gofakeit.CurrencyShort() // USD
	},
}

func init() {
	rootCmd.AddCommand(ordersCmd)
}
